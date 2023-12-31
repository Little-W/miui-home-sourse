.class final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$2$1;
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
.field final synthetic $it:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$2$1;->$it:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$2$1;->$it:Lcom/miui/home/launcher/Workspace;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setAlpha(F)V

    const-string p0, "NoWordSwitchAnimHelper"

    const-string v0, "start switch invisible workspace"

    .line 124
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
