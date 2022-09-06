.class Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;
.super Ljava/lang/Object;
.source "ClockGadgetDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$100(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "/data/system/theme/clock_2x4"

    :cond_0
    const-string v1, "Launcher.ClockGadgetDelegate"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActualGadget backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string v4, "type"

    .line 240
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v5, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$202(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "flip"

    .line 242
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$300(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/ViewStub;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    move-object v2, v3

    goto :goto_0

    .line 245
    :cond_1
    new-instance v2, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$1;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$1;-><init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;Landroid/content/Context;)V

    .line 255
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->containsConfig(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/gadget/AwesomeClock;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setMamlConfigPath(Ljava/lang/String;)V

    .line 259
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v5}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$600(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setConfigParas(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$300(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/ViewStub;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 264
    instance-of v4, v2, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v4, :cond_4

    .line 265
    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-interface {v4, v0}, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;->initConfig(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :cond_3
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$300(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/ViewStub;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 269
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$700(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Z)V

    move-object v2, v3

    .line 272
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v4, v4, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    .line 275
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v6, v6, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    .line 276
    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 278
    :cond_5
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v6, v6, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    .line 279
    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 281
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v6, v6, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_7

    .line 282
    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 284
    :cond_7
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v6, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->removeView(Landroid/view/View;)V

    .line 287
    :cond_8
    instance-of v4, v2, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v4, :cond_c

    .line 288
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 289
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 290
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$800(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Lorg/w3c/dom/Element;Landroid/view/View;)V

    .line 291
    move-object v1, v2

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 292
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_9

    .line 293
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 295
    :cond_9
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    .line 296
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 298
    :cond_a
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_b

    .line 299
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 302
    :cond_b
    instance-of v3, v1, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v3, :cond_d

    .line 303
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 304
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iput-object v1, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 305
    iget-object v1, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/gadget/Gadget;->setCanNotChangeCanvasAlpha(Z)V

    goto :goto_2

    .line 308
    :cond_c
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 309
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iput-object v3, v1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    :cond_d
    :goto_2
    const-string v1, "awesome"

    .line 312
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$200(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    instance-of v1, v2, Lcom/miui/home/launcher/gadget/AwesomeClock;

    if-eqz v1, :cond_e

    .line 313
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    check-cast v2, Lcom/miui/home/launcher/gadget/AwesomeClock;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setClockButtonListener(Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$402(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Z)Z

    .line 314
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$902(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Ljava/lang/String;)Ljava/lang/String;

    :cond_e
    return-void
.end method
