.class Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/view/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/library/view/viewpager/ViewPager;


# direct methods
.method constructor <init>(Lcom/miui/home/library/view/viewpager/ViewPager;)V
    .locals 0

    .line 3091
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 3096
    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 3101
    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$PagerObserver;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->dataSetChanged()V

    return-void
.end method
