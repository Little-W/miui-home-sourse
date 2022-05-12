.class Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;
.super Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiAppTransitionCallback"
.end annotation


# instance fields
.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 7676
    invoke-direct {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;-><init>()V

    .line 7677
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;->mLauncherRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 7673
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .locals 2

    .line 7682
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7686
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 7687
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7688
    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7689
    new-instance p2, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    invoke-direct {p2, p1, v1}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public notifyMiuiAnimationEnd()V
    .locals 1

    .line 7703
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 7707
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationEnd()V

    return-void
.end method

.method public notifyMiuiAnimationStart()V
    .locals 1

    .line 7694
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 7698
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationStart()V

    return-void
.end method
