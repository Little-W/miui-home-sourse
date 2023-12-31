.class public Landroidx/preference/XMiuiCheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;


# instance fields
.field private Helper:Landroidx/preference/XMiuiPreferenceHelper;

.field private mDefaultValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {v1, p1, p2}, Landroidx/preference/XMiuiPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "defaultValue"

    invoke-virtual {v1, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    const-string v2, "defaultValue"

    invoke-virtual {v1, v2, v3}, Landroidx/preference/XMiuiPreferenceHelper;->getAttributeAndroidBool(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v2, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    invoke-virtual {v1, v2}, Landroidx/preference/XMiuiPreferenceHelper;->getBool(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiCheckBoxPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    :cond_0
    iget-object v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->getBool(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiCheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/XMiuiCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->mDefaultValue:I

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->getBool(I)Z

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v1, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/XMiuiPreferenceHelper;->setInt(I)V

    iget-object v0, p0, Landroidx/preference/XMiuiCheckBoxPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
