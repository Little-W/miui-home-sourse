.class final Lio/reactivex2/internal/functions/Functions$EmptyAction;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex2/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyAction"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptyAction"

    return-object p0
.end method
