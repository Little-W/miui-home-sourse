.class Lcom/miui/home/launcher/ColorFilterContainerView$2;
.super Ljava/lang/Object;
.source "ColorFilterContainerView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ColorFilterContainerView;->setupColorFilterView(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Ljava/util/TreeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

.field final synthetic val$colorType:Ljava/lang/Integer;

.field final synthetic val$maxIconSize:I

.field final synthetic val$radioButton:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ColorFilterContainerView;Landroid/widget/RadioButton;Ljava/lang/Integer;I)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$2;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    iput-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView$2;->val$radioButton:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/miui/home/launcher/ColorFilterContainerView$2;->val$colorType:Ljava/lang/Integer;

    iput p4, p0, Lcom/miui/home/launcher/ColorFilterContainerView$2;->val$maxIconSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$2;->val$radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 167
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$2;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView$2;->val$radioButton:Landroid/widget/RadioButton;

    iget-object p3, p0, Lcom/miui/home/launcher/ColorFilterContainerView$2;->val$colorType:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$2;->val$maxIconSize:I

    invoke-static {p1, p2, p3, p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$500(Lcom/miui/home/launcher/ColorFilterContainerView;Landroid/widget/RadioButton;II)V

    return-void
.end method
