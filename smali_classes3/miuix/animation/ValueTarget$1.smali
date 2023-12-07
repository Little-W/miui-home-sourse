.class Lmiuix/animation/ValueTarget$1;
.super Ljava/lang/Object;
.source "ValueTarget.java"

# interfaces
.implements Lmiuix/animation/ITargetCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/ValueTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;
    .locals 1

    .line 20
    new-instance p0, Lmiuix/animation/ValueTarget;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/animation/ValueTarget;-><init>(Ljava/lang/Object;Lmiuix/animation/ValueTarget$1;)V

    return-object p0
.end method
