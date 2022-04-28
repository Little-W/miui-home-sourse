.class public abstract Lio/branch/search/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/n2$c;,
        Lio/branch/search/n2$a;,
        Lio/branch/search/n2$b;
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/branch/search/n2;->a:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/n2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lio/branch/search/n2;->a:I

    return v0
.end method

.method public abstract a(Landroid/content/Context;)Landroid/app/job/JobInfo;
.end method
