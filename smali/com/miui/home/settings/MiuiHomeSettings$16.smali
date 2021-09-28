.class Lcom/miui/home/settings/MiuiHomeSettings$16;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->setIconSettingValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 723
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings$16;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 727
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 728
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$900(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object p1

    const v0, 0x7f1001f1

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setTitle(I)V

    .line 729
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$900(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object p1

    const v0, 0x7f1001f0

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setSummary(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 732
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.ICON_CUSTOMIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isNewIconPage"

    .line 733
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "miref"

    const-string v1, "miuiHome"

    .line 734
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$900(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
