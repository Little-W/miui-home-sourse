.class final Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$changeViewAlpha$1;
.super Ljava/lang/Object;
.source "NoWordLauncherElementAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->changeViewAlpha(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoWordLauncherElementAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoWordLauncherElementAdapter.kt\ncom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$changeViewAlpha$1\n*L\n1#1,297:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $isChangeAlpha:Z

.field final synthetic this$0:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$changeViewAlpha$1;->this$0:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    iput-boolean p2, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$changeViewAlpha$1;->$isChangeAlpha:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$changeViewAlpha$1;->this$0:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->viewChangeAlphaWhenEditModeChange()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 250
    iget-boolean v1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$changeViewAlpha$1;->$isChangeAlpha:Z

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method
