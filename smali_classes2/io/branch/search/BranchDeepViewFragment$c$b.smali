.class public Lio/branch/search/BranchDeepViewFragment$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchDeepViewFragment$c;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lio/branch/search/BranchDeepViewFragment$c;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchDeepViewFragment$c;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment$c$b;->b:Lio/branch/search/BranchDeepViewFragment$c;

    iput-object p2, p0, Lio/branch/search/BranchDeepViewFragment$c$b;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lio/branch/search/BranchDeepViewFragment$c$b;->b:Lio/branch/search/BranchDeepViewFragment$c;

    iget v1, v0, Lio/branch/search/BranchDeepViewFragment$c;->b:I

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/branch/search/BranchDeepViewFragment$c;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment$c$b;->b:Lio/branch/search/BranchDeepViewFragment$c;

    iget-object v1, v1, Lio/branch/search/BranchDeepViewFragment$c;->a:Landroid/widget/ImageView;

    new-instance v2, Lio/branch/search/BranchDeepViewFragment$d;

    iget-object v3, p0, Lio/branch/search/BranchDeepViewFragment$c$b;->a:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lio/branch/search/BranchDeepViewFragment$d;-><init>(Landroid/graphics/Bitmap;FLio/branch/search/BranchDeepViewFragment$a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lio/branch/search/BranchDeepViewFragment$c;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment$c$b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
