.class Lmiui/external/widget/Spinner$DialogPopupAdapter;
.super Lmiui/external/widget/Spinner$DropDownAdapter;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/external/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogPopupAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 655
    invoke-direct {p0, p1, p2}, Lmiui/external/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 660
    invoke-super {p0, p1, p2, p3}, Lmiui/external/widget/Spinner$DropDownAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 661
    sget-object p2, Lmiui/external/graphics/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    invoke-static {p1, p2}, Lmiui/external/graphics/TaggingDrawableUtil;->updateBackgroundState(Landroid/view/View;[I)V

    return-object p1
.end method
