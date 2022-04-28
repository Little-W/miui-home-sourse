.class Lcom/miui/home/settings/MiuiHomeSettings$4;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$4;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$4;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$100(Lcom/miui/home/settings/MiuiHomeSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$4;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {v0}, Lcom/miui/home/settings/MiuiHomeSettings;->access$000(Lcom/miui/home/settings/MiuiHomeSettings;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 296
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings$4;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
