.class Lmiuix/animation/listener/ListenerNotifier$ListenerNode;
.super Ljava/lang/Object;
.source "ListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerNode"
.end annotation


# instance fields
.field bindTag:Ljava/lang/Object;

.field listener:Lmiuix/animation/listener/TransitionListener;

.field next:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

.field prev:Lmiuix/animation/listener/ListenerNotifier$ListenerNode;

.field relatedProperty:[Lmiuix/animation/property/FloatProperty;

.field toTag:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/listener/ListenerNotifier$1;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;-><init>()V

    return-void
.end method
