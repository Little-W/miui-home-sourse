.class public final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;
.super Ljava/lang/Object;
.source "NoWordSwitchAnimHelper.kt"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object p1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$getMScheduledWorkspaceDisappearAnim$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 88
    new-instance p1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1$onChildViewAdded$1;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1$onChildViewAdded$1;-><init>(Landroid/view/View;)V

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "NoWordSwitchAnimHelper"

    const-string p2, "perform childView add anim"

    .line 89
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
