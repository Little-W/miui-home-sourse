.class Lcom/miui/home/settings/MiuiHomeSettings$18;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->initPersonalAssistantSettings()V
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

    .line 964
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$18;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 0

    .line 967
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 968
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$18;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$200(Lcom/miui/home/settings/MiuiHomeSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$18;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 971
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$18;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$1000(Lcom/miui/home/settings/MiuiHomeSettings;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 972
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$18;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const p1, 0x7f110397

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/ValuePreference;->setTitle(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 964
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings$18;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
