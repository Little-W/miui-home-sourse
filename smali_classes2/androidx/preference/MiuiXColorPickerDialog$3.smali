.class Landroidx/preference/MiuiXColorPickerDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/MiuiXColorPickerDialog;->setColorInTemplate(Landroidx/preference/MiuiXColorPickerPanelView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/MiuiXColorPickerDialog;

.field final synthetic val$color_tempate:I


# direct methods
.method constructor <init>(Landroidx/preference/MiuiXColorPickerDialog;I)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/MiuiXColorPickerDialog$3;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    iput p2, p0, Landroidx/preference/MiuiXColorPickerDialog$3;->val$color_tempate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroidx/preference/MiuiXColorPickerDialog$3;->this$0:Landroidx/preference/MiuiXColorPickerDialog;

    invoke-static {v0}, Landroidx/preference/MiuiXColorPickerDialog;->access$100(Landroidx/preference/MiuiXColorPickerDialog;)Landroidx/preference/MiuiXColorPickerView;

    move-result-object v0

    iget v1, p0, Landroidx/preference/MiuiXColorPickerDialog$3;->val$color_tempate:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/preference/MiuiXColorPickerView;->setColor(IZ)V

    return-void
.end method
