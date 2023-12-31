.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$JgAzxk_0EU2H9yS_R59dT7vadyI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/gadget/MaMlPendingHostView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$JgAzxk_0EU2H9yS_R59dT7vadyI;->f$0:Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$JgAzxk_0EU2H9yS_R59dT7vadyI;->f$0:Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher$LauncherMaMlDownloadListener;->lambda$onDownloadStatusChange$0(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V

    return-void
.end method
