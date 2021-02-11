.class final Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$logFiles$1;
.super Ljava/lang/Object;
.source "LogCleanWorker.kt"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/log/LogCleanWorker;->clearLogDir(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$logFiles$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$logFiles$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$logFiles$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$logFiles$1;->INSTANCE:Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$logFiles$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
