.class public Lio/branch/search/BranchConfiguration$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/BranchConfiguration$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchConfiguration;->a(Ljava/lang/String;)Lio/branch/search/BranchConfiguration$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/branch/search/BranchConfiguration;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchConfiguration$b;->b:Lio/branch/search/BranchConfiguration;

    iput-object p2, p0, Lio/branch/search/BranchConfiguration$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lio/branch/search/BranchConfiguration$b;->b:Lio/branch/search/BranchConfiguration;

    invoke-static {v0}, Lio/branch/search/BranchConfiguration;->a(Lio/branch/search/BranchConfiguration;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchConfiguration$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/branch/search/BranchConfiguration$b;->b:Lio/branch/search/BranchConfiguration;

    invoke-static {v0}, Lio/branch/search/BranchConfiguration;->b(Lio/branch/search/BranchConfiguration;)V

    return-void
.end method
