.class Lcom/miui/home/launcher/LauncherMenu$6;
.super Ljava/lang/Object;
.source "LauncherMenu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherMenu;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherMenu;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherMenu;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$6;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$6;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$300(Lcom/miui/home/launcher/LauncherMenu;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "miui_home_enable_auto_fill_empty_cells"

    invoke-static {p1, v0, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 153
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingSubAutoFill(Z)V

    return-void
.end method
