#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv)
{
	if (argc < 2)
	{
		fputs("This tool converts PCM samples to the format required by Clownacy's DAC driver.\n"
		      "\n"
		      "Drag and drop your PCM file onto this program and a converted copy will be\n"
		      "created.\n"
		      "\n"
		      "You can also use the command line: pass the input filename as the first\n"
		      "parameter, and the output filename as the second parameter.\n", stdout);
#ifdef __WIN32
		// Because Windows is dumb
		getchar();
#endif
	}
	else
	{
		char *in_filename = argv[1];
		char *out_filename;

		if (argc < 3)
		{
			// String-processing in C is HELL
			const char suffix[] = " (converted)";

			out_filename = malloc(strlen(in_filename) + sizeof(suffix));

			if (out_filename == NULL)
				exit(EXIT_FAILURE); // Screw this

			char *path_separator1 = strrchr(in_filename, '/');
			char *path_separator2 = strrchr(in_filename, '\\');

			char *file_extension = path_separator1 > path_separator2 ? path_separator1 : path_separator2;

			if (file_extension == NULL)
				file_extension = in_filename;

			file_extension = strchr(file_extension, '.');

			char *filename_pointer = out_filename;

			memcpy(filename_pointer, in_filename, file_extension - in_filename);
			filename_pointer += file_extension - in_filename;

			memcpy(filename_pointer, suffix, sizeof(suffix) - 1);
			filename_pointer += sizeof(suffix) - 1;

			strcpy(filename_pointer, file_extension);
		}
		else
		{
			out_filename = argv[2];
		}

		FILE *in_file = fopen(in_filename, "rb");

		if (in_file == NULL)
		{
			fprintf(stderr, "Error! Could not open input file \"%s\"\n", in_filename);
		}
		else
		{
			FILE *out_file = fopen(out_filename, "wb");

			if (out_file == NULL)
			{
				fprintf(stderr, "Error! Could not open output file \"%s\"\n", out_filename);
			}
			else
			{
				int byte;
				while ((byte = fgetc(in_file)) != EOF)
				{
					if (byte == 0)
						byte = 1;

					fputc(byte, out_file);
				}

				fclose(out_file);
			}

			fclose(in_file);
		}

		if (argc < 3)
			free(out_filename);
	}

	return EXIT_SUCCESS;
}
