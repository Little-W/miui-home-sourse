.class public Lmiuix/preference/RadioButtonPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;,
        Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;,
        Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;
    }
.end annotation


# instance fields
.field private mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

.field private mCheckedPosition:I

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    sget v0, Lmiuix/preference/R$attr;->preferenceCategoryRadioStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 24
    new-instance p1, Lmiuix/preference/RadioButtonPreferenceCategory$1;

    invoke-direct {p1, p0}, Lmiuix/preference/RadioButtonPreferenceCategory$1;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V

    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method private clearChecked()V
    .locals 2

    .line 130
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return-void
.end method

.method private parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
    .locals 1

    .line 204
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$PreferenceSingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreference;)V

    return-object v0

    .line 206
    :cond_0
    instance-of v0, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;

    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V

    return-object v0

    .line 209
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only RadioButtonPreference or RadioSetPreferenceCategory can be added to RadioButtonPreferenceCategory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 1

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    return-void
.end method

.method private updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 4

    .line 151
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 154
    invoke-virtual {p0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 155
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 156
    iput v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 146
    :cond_0
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    :cond_1
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object v0

    .line 82
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 86
    :cond_0
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    if-nez v1, :cond_1

    .line 90
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    goto :goto_0

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already has a checked item, please check state of new add preference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return p1
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .locals 3

    .line 97
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object v0

    .line 98
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 101
    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 104
    iput-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory;->mCheckedChoice:Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    :cond_0
    return p1
.end method

.method public setCheckedPreference(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    .line 117
    invoke-direct {p0}, Lmiuix/preference/RadioButtonPreferenceCategory;->clearChecked()V

    return-void

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 124
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->setCheckedPreferenceInternal(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 125
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 126
    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method
