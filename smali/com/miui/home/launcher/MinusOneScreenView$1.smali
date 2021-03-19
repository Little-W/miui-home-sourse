.class Lcom/miui/home/launcher/MinusOneScreenView$1;
.super Ljava/lang/Object;
.source "MinusOneScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/MinusOneScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/MinusOneScreenView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/MinusOneScreenView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView$1;->this$0:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView$1;->this$0:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView$1;->this$0:Lcom/miui/home/launcher/MinusOneScreenView;

    .line 106
    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getTouchState()I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.miui.personalassistant.preferences.dark_bg_color"

    goto :goto_0

    :cond_0
    const-string v1, "com.miui.personalassistant.preferences.bg_color"

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/MinusOneScreenView$1;->this$0:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-static {v2}, Lcom/miui/home/launcher/MinusOneScreenView;->access$000(Lcom/miui/home/launcher/MinusOneScreenView;)I

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->access$002(Lcom/miui/home/launcher/MinusOneScreenView;I)I

    :cond_1
    return-void
.end method
