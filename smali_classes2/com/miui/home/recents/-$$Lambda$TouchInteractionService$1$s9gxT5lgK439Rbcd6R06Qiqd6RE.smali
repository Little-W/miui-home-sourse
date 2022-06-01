.class public final synthetic Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$s9gxT5lgK439Rbcd6R06Qiqd6RE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/TouchInteractionService$1;

.field private final synthetic f$1:Landroid/os/Bundle;

.field private final synthetic f$2:Lcom/android/wm/shell/onehanded/IOneHanded;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/TouchInteractionService$1;Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/IOneHanded;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$s9gxT5lgK439Rbcd6R06Qiqd6RE;->f$0:Lcom/miui/home/recents/TouchInteractionService$1;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$s9gxT5lgK439Rbcd6R06Qiqd6RE;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$s9gxT5lgK439Rbcd6R06Qiqd6RE;->f$2:Lcom/android/wm/shell/onehanded/IOneHanded;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$s9gxT5lgK439Rbcd6R06Qiqd6RE;->f$0:Lcom/miui/home/recents/TouchInteractionService$1;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$s9gxT5lgK439Rbcd6R06Qiqd6RE;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$s9gxT5lgK439Rbcd6R06Qiqd6RE;->f$2:Lcom/android/wm/shell/onehanded/IOneHanded;

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/TouchInteractionService$1;->lambda$onInitialize$0(Lcom/miui/home/recents/TouchInteractionService$1;Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/IOneHanded;)V

    return-void
.end method
