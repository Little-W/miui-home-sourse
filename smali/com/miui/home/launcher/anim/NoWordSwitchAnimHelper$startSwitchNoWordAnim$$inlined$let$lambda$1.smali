.class final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "NoWordSwitchAnimHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->startSwitchNoWordAnim(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $animEndAction$inlined:Ljava/lang/Runnable;

.field final synthetic $it:Lcom/miui/home/launcher/Workspace;

.field final synthetic $useAppearAnim$inlined:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Ljava/lang/Runnable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$$inlined$let$lambda$1;->$it:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$$inlined$let$lambda$1;->$animEndAction$inlined:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$$inlined$let$lambda$1;->$useAppearAnim$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 109
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$$inlined$let$lambda$1;->$animEndAction$inlined:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$setMAnimEndAction$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Ljava/lang/Runnable;)V

    .line 110
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$setMScheduledWorkspaceDisappearAnim$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Z)V

    .line 111
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    iget-boolean v2, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$$inlined$let$lambda$1;->$useAppearAnim$inlined:Z

    invoke-static {v0, v2}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$setMShouldScheduleAppearAnim$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Z)V

    .line 112
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    iget-object v2, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$$inlined$let$lambda$1;->$it:Lcom/miui/home/launcher/Workspace;

    check-cast v2, Landroid/view/View;

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$doSwitchAnim(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Landroid/view/View;Z)V

    const-string v0, "NoWordSwitchAnimHelper"

    const-string v1, "startSwitchNoWordAnim"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
