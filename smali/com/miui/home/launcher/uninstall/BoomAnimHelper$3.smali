.class Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->widgetDoBoomAnim(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Runnable;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$soundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->playAsync(IF)V

    return-void
.end method
