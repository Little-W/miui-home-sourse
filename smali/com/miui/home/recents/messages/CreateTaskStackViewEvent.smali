.class public Lcom/miui/home/recents/messages/CreateTaskStackViewEvent;
.super Ljava/lang/Object;
.source "CreateTaskStackViewEvent.java"


# instance fields
.field private final taskStackView:Lcom/miui/home/recents/views/TaskStackView;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/home/recents/messages/CreateTaskStackViewEvent;->taskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-void
.end method


# virtual methods
.method public getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/miui/home/recents/messages/CreateTaskStackViewEvent;->taskStackView:Lcom/miui/home/recents/views/TaskStackView;

    return-object v0
.end method
