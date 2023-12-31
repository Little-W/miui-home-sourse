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

    .line 8139
    invoke-direct {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;-><init>()V

    .line 8140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;->mLauncherRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 8136
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .locals 1

    .line 8145
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8149
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 8150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8151
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 8152
    new-instance p1, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    invoke-direct {p1, p0, v0}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public notifyMiuiAnimationEnd()V
    .locals 0

    .line 8166
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 8170
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationEnd()V

    return-void
.end method

.method public notifyMiuiAnimationStart()V
    .locals 0

    .line 8157
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 8161
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationStart()V

    return-void
.end method
