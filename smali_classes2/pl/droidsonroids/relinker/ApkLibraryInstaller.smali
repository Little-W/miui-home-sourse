.class public Lpl/droidsonroids/relinker/ApkLibraryInstaller;
.super Ljava/lang/Object;

# interfaces
.implements Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x1000

    new-array p0, p0, [B

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-wide v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private findAPKWithLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinkerInstance;)Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    .locals 16

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->sourceDirectories(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_5

    aget-object v7, v1, v5

    move v8, v4

    :goto_1
    add-int/lit8 v9, v8, 0x1

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-ge v8, v10, :cond_0

    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v12, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    goto :goto_2

    :catch_0
    move v8, v9

    goto :goto_1

    :cond_0
    :goto_2
    if-nez v6, :cond_1

    move-object/from16 v13, p3

    move-object/from16 v10, p4

    goto :goto_5

    :cond_1
    move v8, v4

    :goto_3
    add-int/lit8 v9, v8, 0x1

    if-ge v8, v10, :cond_4

    array-length v8, v0

    move v12, v4

    :goto_4
    if-ge v12, v8, :cond_3

    aget-object v13, v0, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v15, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v14, v15, v4

    aput-object v7, v15, v11

    const-string v4, "Looking for %s in APK %s..."

    move-object/from16 v10, p4

    invoke-virtual {v10, v4, v15}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v0, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    invoke-direct {v0, v6, v4}, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x5

    goto :goto_4

    :cond_3
    move-object/from16 v13, p3

    move-object/from16 v10, p4

    move v8, v9

    const/4 v10, 0x5

    goto :goto_3

    :cond_4
    move-object/from16 v13, p3

    move-object/from16 v10, p4

    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_5
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private sourceDirectories(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p1, p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p1, p1

    add-int/2addr p1, v1

    new-array p1, p1, [Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v2, p1, v0

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p0, p0

    invoke-static {v2, v0, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-array p1, v1, [Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p0, p1, v0

    return-object p1
.end method


# virtual methods
.method public installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lpl/droidsonroids/relinker/ReLinkerInstance;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p5}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->findAPKWithLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinkerInstance;)Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    :try_start_1
    const-string v1, "Found %s! Extracting..."

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, p2

    invoke-virtual {p5, v1, v4}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_3
    iget-object v1, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v4, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-direct {p0, v1, v4}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    :try_start_6
    invoke-direct {p0, v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    :goto_1
    invoke-direct {p0, v4}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :cond_1
    invoke-direct {p0, v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p4, v3, p2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p4, v3, p2}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p4, v3}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p1, :cond_2

    :try_start_7
    iget-object p0, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :cond_2
    return-void

    :catchall_0
    move-exception p2

    move-object v0, v4

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    move-object v4, v0

    goto :goto_3

    :catch_2
    move-object v4, v0

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object v1, v0

    :goto_2
    :try_start_8
    invoke-direct {p0, v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    invoke-direct {p0, v0}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    throw p2

    :catch_3
    move-object v1, v0

    move-object v4, v1

    :catch_4
    :goto_3
    invoke-direct {p0, v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_5
    move-object v1, v0

    move-object v4, v1

    :catch_6
    :goto_4
    invoke-direct {p0, v1}, Lpl/droidsonroids/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_7
    :goto_5
    move v1, v2

    goto :goto_0

    :cond_3
    const-string p0, "FATAL! Couldn\'t extract the library from the APK!"

    invoke-virtual {p5, p0}, Lpl/droidsonroids/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz p1, :cond_4

    :try_start_9
    iget-object p0, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p0, :cond_4

    iget-object p0, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_4
    return-void

    :cond_5
    :try_start_a
    new-instance p0, Lpl/droidsonroids/relinker/MissingLibraryException;

    invoke-direct {p0, p3}, Lpl/droidsonroids/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p0

    goto :goto_6

    :catchall_4
    move-exception p0

    move-object p1, v0

    :goto_6
    if-eqz p1, :cond_6

    :try_start_b
    iget-object p2, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p2, :cond_6

    iget-object p1, p1, Lpl/droidsonroids/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :cond_6
    throw p0
.end method
