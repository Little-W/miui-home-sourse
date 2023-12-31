.class public Lio/branch/search/BranchDeepViewFragment$c$c;
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
.field public final synthetic a:Lio/branch/search/BranchDeepViewFragment$c;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchDeepViewFragment$c;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment$c$c;->a:Lio/branch/search/BranchDeepViewFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$c$c;->a:Lio/branch/search/BranchDeepViewFragment$c;

    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$c;->a:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
