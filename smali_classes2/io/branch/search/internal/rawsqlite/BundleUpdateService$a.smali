.class public Lio/branch/search/internal/rawsqlite/BundleUpdateService$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;Landroid/app/job/JobParameters;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/l;

.field public final synthetic b:Landroid/app/job/JobParameters;

.field public final synthetic c:Lio/branch/search/internal/rawsqlite/BundleUpdateService;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/rawsqlite/BundleUpdateService;Lio/branch/search/l;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService$a;->c:Lio/branch/search/internal/rawsqlite/BundleUpdateService;

    iput-object p2, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService$a;->a:Lio/branch/search/l;

    iput-object p3, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService$a;->b:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService$a;->c:Lio/branch/search/internal/rawsqlite/BundleUpdateService;

    iget-object v1, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService$a;->a:Lio/branch/search/l;

    iget-object p0, p0, Lio/branch/search/internal/rawsqlite/BundleUpdateService$a;->b:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, p0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/internal/rawsqlite/BundleUpdateService;Lio/branch/search/l;Landroid/app/job/JobParameters;)Z

    return-void
.end method
