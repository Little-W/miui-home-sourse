.class Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout$ViewConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

.field whichDirection:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V
    .locals 0

    .line 1965
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;->this$1:Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1966
    iput p1, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;->whichDirection:I

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 1

    .line 1969
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;->this$1:Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    .line 1970
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;->this$1:Lcom/miui/home/launcher/CellLayout$ViewConfiguration;

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ItemInfo;

    .line 1971
    iget v0, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;->whichDirection:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1977
    :pswitch_0
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    mul-int/2addr v0, p2

    iget p2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    mul-int/2addr p2, p1

    sub-int/2addr v0, p2

    return v0

    .line 1975
    :pswitch_1
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    sub-int/2addr p2, p1

    return p2

    .line 1973
    :pswitch_2
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    sub-int/2addr p2, p1

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1965
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
