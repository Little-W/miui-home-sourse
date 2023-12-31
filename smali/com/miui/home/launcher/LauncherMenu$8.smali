.class Lcom/miui/home/launcher/LauncherMenu$8;
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

    .line 172
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$8;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu$8;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherMenu;->access$600(Lcom/miui/home/launcher/LauncherMenu;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "miui_home_enable_auto_fill_empty_cells"

    invoke-static {p0, p1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 178
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingSubAutoFill(Z)V

    return-void
.end method
