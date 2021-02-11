.class Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;
.super Ljava/lang/Object;
.source "FilePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elvishew/xlog/printer/file/FilePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Writer"
.end annotation


# instance fields
.field private bufferedWriter:Ljava/io/BufferedWriter;

.field private lastFileName:Ljava/lang/String;

.field private logFile:Ljava/io/File;

.field final synthetic this$0:Lcom/elvishew/xlog/printer/file/FilePrinter;


# direct methods
.method private constructor <init>(Lcom/elvishew/xlog/printer/file/FilePrinter;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->this$0:Lcom/elvishew/xlog/printer/file/FilePrinter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/elvishew/xlog/printer/file/FilePrinter;Lcom/elvishew/xlog/printer/file/FilePrinter$1;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;-><init>(Lcom/elvishew/xlog/printer/file/FilePrinter;)V

    return-void
.end method


# virtual methods
.method appendLog(Ljava/lang/String;)V
    .locals 1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 483
    iget-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method close()Z
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->bufferedWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 461
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->bufferedWriter:Ljava/io/BufferedWriter;

    .line 467
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->lastFileName:Ljava/lang/String;

    .line 468
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 463
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 466
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->bufferedWriter:Ljava/io/BufferedWriter;

    .line 467
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->lastFileName:Ljava/lang/String;

    .line 468
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    return v0

    .line 466
    :goto_0
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->bufferedWriter:Ljava/io/BufferedWriter;

    .line 467
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->lastFileName:Ljava/lang/String;

    .line 468
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    throw v0

    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method getFile()Ljava/io/File;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    return-object v0
.end method

.method getLastFileName()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->lastFileName:Ljava/lang/String;

    return-object v0
.end method

.method isOpened()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->bufferedWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method open(Ljava/lang/String;)Z
    .locals 5

    .line 422
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->lastFileName:Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->this$0:Lcom/elvishew/xlog/printer/file/FilePrinter;

    invoke-static {v1}, Lcom/elvishew/xlog/printer/file/FilePrinter;->access$300(Lcom/elvishew/xlog/printer/file/FilePrinter;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    .line 426
    iget-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 428
    :try_start_0
    iget-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 434
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 435
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->lastFileName:Ljava/lang/String;

    .line 436
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    return v0

    .line 443
    :cond_1
    :goto_0
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->bufferedWriter:Ljava/io/BufferedWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception p1

    .line 445
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->lastFileName:Ljava/lang/String;

    .line 447
    iput-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Writer;->logFile:Ljava/io/File;

    return v0
.end method
