.class Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;
.super Ljava/lang/Object;
.source "FpsReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/monitor/FpsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileWriterRunnable"
.end annotation


# instance fields
.field public mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/launcher/monitor/FpsReporter;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/monitor/FpsReporter;Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->mString:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->mString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {v0}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$1000(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->mString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 177
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {v3}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$1000(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$1102(Lcom/miui/home/launcher/monitor/FpsReporter;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {v0}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$1100(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/io/BufferedWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {v0}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$1100(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {v0}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$1100(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 181
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :try_start_3
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {v0}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$1100(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void

    .line 184
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/miui/home/launcher/monitor/FpsReporter$FileWriterRunnable;->this$0:Lcom/miui/home/launcher/monitor/FpsReporter;

    invoke-static {v1}, Lcom/miui/home/launcher/monitor/FpsReporter;->access$1100(Lcom/miui/home/launcher/monitor/FpsReporter;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    :goto_2
    throw v0

    :cond_1
    :goto_3
    return-void
.end method
