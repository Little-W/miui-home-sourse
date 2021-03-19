.class Lcom/tencent/matrix/resource/watcher/DumpStorageManager$1;
.super Ljava/lang/Object;
.source "DumpStorageManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/resource/watcher/DumpStorageManager;->prepareStorageDirectory()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/resource/watcher/DumpStorageManager;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/watcher/DumpStorageManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/tencent/matrix/resource/watcher/DumpStorageManager$1;->this$0:Lcom/tencent/matrix/resource/watcher/DumpStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".hprof"

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
