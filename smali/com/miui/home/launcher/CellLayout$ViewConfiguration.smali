.class Lcom/miui/home/launcher/CellLayout$ViewConfiguration;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;
    }
.end annotation


# instance fields
.field comparator:Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field sortedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 1916
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1920
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->map:Ljava/util/HashMap;

    .line 1921
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->sortedViews:Ljava/util/ArrayList;

    .line 1944
    new-instance p1, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;-><init>(Lcom/miui/home/launcher/CellLayout$ViewConfiguration;)V

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->comparator:Lcom/miui/home/launcher/CellLayout$ViewConfiguration$SpanComparator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V
    .locals 0

    .line 1916
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method


# virtual methods
.method addView(Landroid/view/View;)V
    .locals 6

    .line 1924
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/CellLayout;->access$1500(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1926
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->map:Ljava/util/HashMap;

    new-instance v2, Lcom/miui/home/launcher/ItemInfo;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v5, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/miui/home/launcher/ItemInfo;-><init>(IIII)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clear()V
    .locals 1

    .line 1940
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1941
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method resetViewConfig()V
    .locals 4

    .line 1931
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1932
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/CellLayout;->access$1500(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    .line 1933
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$ViewConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 1934
    iget v3, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v3, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1935
    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v1, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    goto :goto_0

    :cond_0
    return-void
.end method
