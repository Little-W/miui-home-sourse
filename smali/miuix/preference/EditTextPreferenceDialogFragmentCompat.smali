.class public Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;
.super Landroidx/preference/EditTextPreferenceDialogFragment;
.source "EditTextPreferenceDialogFragmentCompat.java"


# instance fields
.field private mDelegate:Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;

.field private mImpl:Lmiuix/preference/IPreferenceDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;-><init>()V

    .line 25
    new-instance v0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat$1;

    invoke-direct {v0, p0}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat$1;-><init>(Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;)V

    iput-object v0, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->mImpl:Lmiuix/preference/IPreferenceDialogFragment;

    .line 49
    new-instance v0, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;

    iget-object v1, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->mImpl:Lmiuix/preference/IPreferenceDialogFragment;

    invoke-direct {v0, v1, p0}, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;-><init>(Lmiuix/preference/IPreferenceDialogFragment;Landroidx/preference/PreferenceDialogFragment;)V

    iput-object v0, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->mDelegate:Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;Landroid/view/View;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;
    .locals 3

    .line 18
    new-instance v0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    .line 19
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 20
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 55
    iget-object v0, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->mDelegate:Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;

    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceDialogFragmentCompatDelegate;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected final onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .line 60
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "using miuix builder instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onPrepareDialogBuilder(Lmiui/app/AlertDialog$Builder;)V
    .locals 2

    .line 64
    new-instance v0, Lmiuix/preference/BuilderDelegate;

    invoke-virtual {p0}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/preference/BuilderDelegate;-><init>(Landroid/content/Context;Lmiui/app/AlertDialog$Builder;)V

    invoke-super {p0, v0}, Landroidx/preference/EditTextPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method
