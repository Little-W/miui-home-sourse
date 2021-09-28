.class public Lmiuix/preference/TextPreference;
.super Landroidx/preference/Preference;
.source "TextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/TextPreference$TextProvider;
    }
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field private mTextProvider:Lmiuix/preference/TextPreference$TextProvider;

.field private mTextRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    sget v0, Lmiuix/preference/R$attr;->textPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getTextProvider()Lmiuix/preference/TextPreference$TextProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getTextProvider()Lmiuix/preference/TextPreference$TextProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiuix/preference/TextPreference$TextProvider;->provideText(Lmiuix/preference/TextPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextProvider()Lmiuix/preference/TextPreference$TextProvider;
    .locals 1

    .line 75
    iget-object v0, p0, Lmiuix/preference/TextPreference;->mTextProvider:Lmiuix/preference/TextPreference$TextProvider;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 120
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 121
    sget v0, Lmiuix/preference/R$id;->text_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    .line 101
    iput p1, p0, Lmiuix/preference/TextPreference;->mTextRes:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getTextProvider()Lmiuix/preference/TextPreference$TextProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lmiuix/preference/TextPreference;->mTextRes:I

    .line 89
    iput-object p1, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->notifyChanged()V

    :cond_0
    return-void

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference already has a TextProvider set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
