.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$8nb5ezcD6zAmgqzXZ63KjhYHsJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$8nb5ezcD6zAmgqzXZ63KjhYHsJg;->f$0:Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$8nb5ezcD6zAmgqzXZ63KjhYHsJg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$8nb5ezcD6zAmgqzXZ63KjhYHsJg;->f$0:Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    iget p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$8nb5ezcD6zAmgqzXZ63KjhYHsJg;->f$1:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/Launcher$LauncherMaMlDownloadListener;->lambda$onDownloadProgress$1(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;I)V

    return-void
.end method
