.class Landroidx/preference/MiuiXColorPickerDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroidx/preference/MiuiXColorPickerDialog$2;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog$2;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-static {v2}, Landroidx/preference/MiuiXColorPickerDialog;->access$000(Landroidx/preference/MiuiXColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/MiuiXColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Landroidx/preference/MiuiXColorPickerDialog$2;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-static {v2}, Landroidx/preference/MiuiXColorPickerDialog;->access$100(Landroidx/preference/MiuiXColorPickerDialog;)Landroidx/preference/MiuiXColorPickerView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroidx/preference/MiuiXColorPickerView;->setColor(IZ)V

    return-void
.end method
