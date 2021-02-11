.class Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;
.super Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferenceSingleChoiceHelper"
.end annotation


# instance fields
.field mPreference:Lmiuix/preference/RadioButtonPreference;

.field final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreference;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 218
    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Landroid/widget/Checkable;)V

    .line 219
    iput-object p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/RadioButtonPreference;

    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/Preference;
    .locals 1

    .line 229
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/RadioButtonPreference;

    return-object v0
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;->mPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/RadioButtonPreference;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    return-void
.end method
