.class Lcom/miui/home/launcher/progress/ProgressInfoList$1;
.super Ljava/lang/Object;
.source "ProgressInfoList.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/progress/ProgressInfoList;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/progress/ProgressInfoList;Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->apply(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->access$000(Lcom/miui/home/launcher/progress/ProgressInfoList;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherSettings;->getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->access$102(Lcom/miui/home/launcher/progress/ProgressInfoList;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressInfoList;->access$000(Lcom/miui/home/launcher/progress/ProgressInfoList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 54
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-static {v3}, Lcom/miui/home/launcher/progress/ProgressInfoList;->access$100(Lcom/miui/home/launcher/progress/ProgressInfoList;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_1

    .line 65
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "statusTitleMap"

    .line 66
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->access$200(Lcom/miui/home/launcher/progress/ProgressInfoList;)Ljava/util/Map;

    move-result-object v2

    const-string v4, "progressOwner"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ProgressInfoList$1;->this$0:Lcom/miui/home/launcher/progress/ProgressInfoList;

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressInfoList;->access$000(Lcom/miui/home/launcher/progress/ProgressInfoList;)Ljava/util/Map;

    move-result-object v2

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    const-string v3, "Launcher_ProgressInfoList"

    const-string v4, "ProgressInfoList init"

    .line 72
    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 78
    :catch_1
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    :catch_2
    :goto_1
    :try_start_6
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_2
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 83
    throw p0

    :catch_3
    move-object v1, v0

    goto :goto_1

    :catch_4
    move-object v1, v0

    goto :goto_1

    .line 84
    :goto_3
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/progress/ProgressInfoList;->access$300()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    const/4 p1, 0x1

    .line 86
    :try_start_7
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->access$402(Z)Z

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/progress/ProgressInfoList;->access$300()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 88
    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :catchall_3
    move-exception p0

    .line 84
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0
.end method
