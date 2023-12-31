.class Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;
.super Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategorySingleChoiceHelper"
.end annotation


# instance fields
.field private mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

.field final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 271
    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Landroid/widget/Checkable;)V

    .line 272
    iput-object p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/Preference;
    .locals 0

    .line 282
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    return-object p0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 287
    invoke-super {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 288
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {p0}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiuix/preference/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 277
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {p0, p1}, Lmiuix/preference/RadioSetPreferenceCategory;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    return-void
.end method
