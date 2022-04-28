.class public Lio/branch/search/BranchDeepViewFragment$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchDeepViewFragment$c;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/BranchDeepViewFragment$c;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchDeepViewFragment$c;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment$c$a;->a:Lio/branch/search/BranchDeepViewFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/branch/search/BranchDeepViewFragment$c$a;->a:Lio/branch/search/BranchDeepViewFragment$c;

    iget-object v0, v0, Lio/branch/search/BranchDeepViewFragment$c;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
