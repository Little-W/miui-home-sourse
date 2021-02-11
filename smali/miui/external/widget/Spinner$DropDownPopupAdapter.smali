.class Lmiui/external/widget/Spinner$DropDownPopupAdapter;
.super Lmiui/external/widget/Spinner$DropDownAdapter;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/external/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownPopupAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 670
    invoke-direct {p0, p1, p2}, Lmiui/external/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 675
    invoke-super {p0, p1, p2, p3}, Lmiui/external/widget/Spinner$DropDownAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 676
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropDownPopupAdapter;->getCount()I

    move-result p3

    invoke-static {p2, p1, p3}, Lmiui/external/graphics/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    return-object p2
.end method
