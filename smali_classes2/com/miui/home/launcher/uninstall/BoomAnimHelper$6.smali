.class Lcom/miui/home/launcher/uninstall/BoomAnimHelper$6;
.super Lmiuix/animation/listener/TransitionListener;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;F)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$6;->val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    iput p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$6;->val$volume:F

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 2

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->getEnableDeleteSound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$6;->val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$6;->val$volume:F

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playAsync(IF)V

    :cond_0
    return-void
.end method
