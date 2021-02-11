.class public final Lcom/miui/home/launcher/log/LogWorker$Companion;
.super Ljava/lang/Object;
.source "LogWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/log/LogWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/log/LogWorker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCACHE_APP_LOG_BACKUP_DIR_PATH()Ljava/io/File;
    .locals 1

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/log/LogWorker;->access$getCACHE_APP_LOG_BACKUP_DIR_PATH$cp()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getCACHE_APP_LOG_DIR_PATH()Ljava/io/File;
    .locals 1

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/log/LogWorker;->access$getCACHE_APP_LOG_DIR_PATH$cp()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getMIUI_284_LOG_DIR_PATH()Ljava/io/File;
    .locals 1

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/log/LogWorker;->access$getMIUI_284_LOG_DIR_PATH$cp()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getMIUI_APP_LOG_DIR_PATH()Ljava/io/File;
    .locals 1

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/log/LogWorker;->access$getMIUI_APP_LOG_DIR_PATH$cp()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
