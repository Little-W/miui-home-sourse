.class final Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;F)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    iput p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$volume:F

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$volume:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playAsync(IF)V

    return-void
.end method
