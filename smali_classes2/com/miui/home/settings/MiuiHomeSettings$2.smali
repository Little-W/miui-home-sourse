.class Lcom/miui/home/settings/MiuiHomeSettings$2;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$2;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeMoreSettingsDefaultHomeClicked()V

    const/4 p1, 0x0

    return p1
.end method
