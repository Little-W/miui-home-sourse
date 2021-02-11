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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 221
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

    const-string v1, "Launcher.ClockGadgetDelegate"

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActualGadget backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v4, "type"

    .line 225
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v5, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$102(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "flip"

    .line 227
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$200(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v2, v3

    goto :goto_0

    .line 230
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$1;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$1;-><init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;Landroid/content/Context;)V

    .line 240
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->containsConfig(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/gadget/AwesomeClock;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setMamlConfigPath(Ljava/lang/String;)V

    .line 244
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v5}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$500(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setConfigParas(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$200(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 249
    instance-of v4, v2, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v4, :cond_3

    .line 250
    move-object v4, v2

    check-cast v4, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-interface {v4, v0}, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;->initConfig(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_2
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$200(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v2, v3

    .line 256
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v4, v4, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v4, :cond_7

    .line 259
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v5, v5, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4

    .line 260
    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 262
    :cond_4
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v5, v5, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 263
    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 265
    :cond_5
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v5, v5, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    .line 266
    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 268
    :cond_6
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->removeView(Landroid/view/View;)V

    .line 271
    :cond_7
    instance-of v4, v2, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v4, :cond_b

    .line 272
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 273
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 274
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$600(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Lorg/w3c/dom/Element;Landroid/view/View;)V

    .line 275
    move-object v1, v2

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 276
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    .line 277
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 279
    :cond_8
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    .line 280
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 282
    :cond_9
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a

    .line 283
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 286
    :cond_a
    instance-of v3, v1, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v3, :cond_c

    .line 287
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 288
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iput-object v1, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    goto :goto_2

    .line 291
    :cond_b
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 292
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    iput-object v3, v1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    :cond_c
    :goto_2
    const-string v1, "awesome"

    .line 295
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$100(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    instance-of v1, v2, Lcom/miui/home/launcher/gadget/AwesomeClock;

    if-eqz v1, :cond_d

    .line 296
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    check-cast v2, Lcom/miui/home/launcher/gadget/AwesomeClock;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setClockButtonListener(Lcom/miui/launcher/views/MamlButtonActionListener;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$302(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Z)Z

    .line 297
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/miui/home/launcher/common/Utilities;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$702(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    new-instance v1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;-><init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$802(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;Lcom/miui/launcher/views/MamlOnExternCommandListener;)Lcom/miui/launcher/views/MamlOnExternCommandListener;

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$800(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Lcom/miui/launcher/views/MamlOnExternCommandListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/gadget/AwesomeClock;->setOnExternCommandListener(Lcom/miui/launcher/views/MamlOnExternCommandListener;)Z

    :cond_d
    return-void
.end method
