.class Landroidx/preference/MiuiXColorPickerDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/MiuiXColorPickerDialog;->setUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/MiuiXColorPickerDialog;


# direct methods
.method constructor <init>(Landroidx/preference/MiuiXColorPickerDialog;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/MiuiXColorPickerDialog$1;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v8, -0x10000

    const/4 v6, 0x6

    if-ne p2, v6, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v5, p0, Landroidx/preference/MiuiXColorPickerDialog$1;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-static {v5}, Landroidx/preference/MiuiXColorPickerDialog;->access$000(Landroidx/preference/MiuiXColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/preference/MiuiXColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Landroidx/preference/MiuiXColorPickerDialog$1;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-static {v5}, Landroidx/preference/MiuiXColorPickerDialog;->access$100(Landroidx/preference/MiuiXColorPickerDialog;)Landroidx/preference/MiuiXColorPickerView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Landroidx/preference/MiuiXColorPickerView;->setColor(IZ)V

    iget-object v5, p0, Landroidx/preference/MiuiXColorPickerDialog$1;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-static {v5}, Landroidx/preference/MiuiXColorPickerDialog;->access$000(Landroidx/preference/MiuiXColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Landroidx/preference/MiuiXColorPickerDialog$1;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-static {v6}, Landroidx/preference/MiuiXColorPickerDialog;->access$200(Landroidx/preference/MiuiXColorPickerDialog;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v1

    iget-object v5, p0, Landroidx/preference/MiuiXColorPickerDialog$1;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-static {v5}, Landroidx/preference/MiuiXColorPickerDialog;->access$000(Landroidx/preference/MiuiXColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroidx/preference/MiuiXColorPickerDialog$1;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-static {v5}, Landroidx/preference/MiuiXColorPickerDialog;->access$000(Landroidx/preference/MiuiXColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0
.end method
