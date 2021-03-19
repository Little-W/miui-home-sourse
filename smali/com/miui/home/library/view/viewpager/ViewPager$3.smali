.class Lcom/miui/home/library/view/viewpager/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/view/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/library/view/viewpager/ViewPager;


# direct methods
.method constructor <init>(Lcom/miui/home/library/view/viewpager/ViewPager;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager$3;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$3;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setScrollState(I)V

    .line 272
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$3;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->populate()V

    return-void
.end method
