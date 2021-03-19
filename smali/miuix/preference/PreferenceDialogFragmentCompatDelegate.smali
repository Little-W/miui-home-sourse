.class Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;
.super Ljava/lang/Object;
.source "PreferenceDialogFragmentCompatDelegate.java"


# instance fields
.field private mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

.field private mInternal:Lmiuix/preference/IPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lmiuix/preference/IPreferenceDialogFragment;Landroidx/preference/PreferenceDialogFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    .line 22
    iput-object p2, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 26
    iget-object p1, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    .line 28
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v2, Lmiuix/preference/BuilderDelegate;

    invoke-direct {v2, p1, v1}, Lmiuix/preference/BuilderDelegate;-><init>(Landroid/content/Context;Lmiui/app/AlertDialog$Builder;)V

    .line 31
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/preference/BuilderDelegate;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 32
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/preference/BuilderDelegate;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    invoke-virtual {v2, v3, v4}, Lmiuix/preference/BuilderDelegate;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 34
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mFragmentCompat:Landroidx/preference/PreferenceDialogFragment;

    invoke-virtual {v2, v3, v4}, Lmiuix/preference/BuilderDelegate;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    iget-object v3, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    invoke-interface {v3, p1}, Lmiuix/preference/IPreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    invoke-interface {v0, p1}, Lmiuix/preference/IPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v2, p1}, Lmiuix/preference/BuilderDelegate;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Lmiuix/preference/BuilderDelegate;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    :goto_0
    iget-object p1, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    invoke-interface {p1, v1}, Lmiuix/preference/IPreferenceDialogFragment;->onPrepareDialogBuilder(Lmiui/app/AlertDialog$Builder;)V

    .line 47
    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->mInternal:Lmiuix/preference/IPreferenceDialogFragment;

    invoke-interface {v0}, Lmiuix/preference/IPreferenceDialogFragment;->needInputMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-object p1
.end method
