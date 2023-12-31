.class Lmiuix/preference/EditTextPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "EditTextPreferenceDialogFragmentCompat.java"

# interfaces
.implements Lmiuix/preference/IPreferenceDialogFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needInputMethod()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p0, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-static {p0, p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->access$100(Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-static {p0, p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->access$000(Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-virtual {p0, p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    return-void
.end method
