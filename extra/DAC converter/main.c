#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef DPCM_MODE
 #define TARGET_FORMAT "DPCM"
#else
 #define TARGET_FORMAT "PCM"
#endif

int main(int argc, char **argv)
{
	int exit_value = EXIT_SUCCESS;

	if (argc < 2)
	{
		fputs("This tool converts " TARGET_FORMAT " samples to the format required by Clownacy's DAC driver.\n"
		      "\n"
		      "Drag and drop your " TARGET_FORMAT " files onto this program and converted copies will be\n"
		      "created.\n"
		      "\n"
		      "You can also use the command line: pass the input filenames as arguments, and if\n"
		      "you're only converting one file, you can specify the output filename with '-o'.\n", stdout);
#ifdef __WIN32
		// Because Windows is dumb
		getchar();
#endif
	}
	else
	{
		char *out_filename;
		bool out_filename_defined = false;

		// Parse options
		for (int i = 1; i < argc - 1; ++i)
		{
			if (argv[i][0] == '-')
			{
				if (argv[i][1] == 'o' && argv[i][2] == '\0')
				{
					if (out_filename_defined)
					{
						fputs("Error! '-o' already set\n", stderr);
						exit_value = EXIT_FAILURE;
					}
					else
					{
						out_filename = argv[i + 1];
						out_filename_defined = true;

						if (argc > 4)
						{
							fputs("Error! '-o' cannot be used when converting multiple files\n", stderr);
							exit_value = EXIT_FAILURE;
						}
					}
				}
				else
				{
					fprintf(stderr, "Error! Unrecognised option \"%s\"\n", argv[i]);
					exit_value = EXIT_FAILURE;
				}
			}
		}

		if (exit_value == EXIT_SUCCESS)
		{
			for (int i = 1; i < argc; ++i)
			{
				const char *in_filename = argv[i];

				if (in_filename[0] != '-' && (!out_filename_defined || strcmp(in_filename, out_filename)))
				{
					// If output filename is undefined, then set it to the input filename with
					//  " (converted)" appended to it, and the file extension changed to '.pcm'.
					if (!out_filename_defined)
					{
						// String-processing in C is HELL
						const char suffix[] = " (converted).pcm";

						out_filename = malloc(strlen(in_filename) + sizeof(suffix));

						if (out_filename == NULL)
							exit(EXIT_FAILURE); // Screw this

						const char *path_separator1 = strrchr(in_filename, '/');
						const char *path_separator2 = strrchr(in_filename, '\\');

						const char *filename_begin = path_separator1 > path_separator2 ? path_separator1 : path_separator2;

						if (filename_begin == NULL)
							filename_begin = in_filename;

						const char *file_extension = strchr(filename_begin, '.');

						if (file_extension == NULL)
							file_extension = filename_begin + strlen(filename_begin);

						char *filename_pointer = out_filename;

						memcpy(filename_pointer, in_filename, file_extension - in_filename);
						filename_pointer += file_extension - in_filename;

						memcpy(filename_pointer, suffix, sizeof(suffix));
					}

					FILE *in_file = fopen(in_filename, "rb");

					if (in_file == NULL)
					{
						fprintf(stderr, "Error! Could not open input file \"%s\"\n", in_filename);
						exit_value = EXIT_FAILURE;
					}
					else
					{
						FILE *out_file = fopen(out_filename, "wb");

						if (out_file == NULL)
						{
							fprintf(stderr, "Error! Could not open output file \"%s\"\n", out_filename);
							exit_value = EXIT_FAILURE;
						}
						else
						{
						#ifdef DPCM_MODE
							unsigned char accumulator = 0x80;

							int byte;
							while ((byte = fgetc(in_file)) != EOF)
							{
								const signed char delta_array[] = {0, 1, 2, 4, 8, 0x10, 0x20, 0x40, -0x80, -1, -2, -4, -8, -0x10, -0x20, -0x40};

								const unsigned char nibble1 = (byte >> 8) & 0xF;
								const unsigned char nibble2 = byte & 0xF;

								accumulator += delta_array[nibble1];
								fputc(accumulator == 0 ? 1 : accumulator, out_file);

								accumulator += delta_array[nibble2];
								fputc(accumulator == 0 ? 1 : accumulator, out_file);
							}
						#else
							int byte;
							while ((byte = fgetc(in_file)) != EOF)
							{
								if (byte == 0)
									byte = 1;

								fputc(byte, out_file);
							}
						#endif

							fclose(out_file);
						}

						fclose(in_file);
					}

					if (!out_filename_defined)
						free(out_filename);
				}
			}
		}
	}

	return exit_value;
}
