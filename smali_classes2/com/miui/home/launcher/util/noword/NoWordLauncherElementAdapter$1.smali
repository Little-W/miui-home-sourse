.class public final Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;
.super Ljava/lang/Object;
.source "NoWordLauncherElementAdapter.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;->this$0:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;->this$0:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-static {p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->access$getMLauncher$p(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;->this$0:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->getMBindElement()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 84
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;->this$0:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->access$setMLauncher$p(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;Lcom/miui/home/launcher/Launcher;)V

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;->this$0:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-static {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->access$initBindElementChild(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
