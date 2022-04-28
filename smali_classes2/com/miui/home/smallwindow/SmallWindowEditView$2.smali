.class Lcom/miui/home/smallwindow/SmallWindowEditView$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SmallWindowEditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowEditView;->initView(Landroid/content/Context;Lcom/miui/home/smallwindow/BadgeCheckedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowEditView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->access$100(Lcom/miui/home/smallwindow/SmallWindowEditView;)Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->isHeader(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
