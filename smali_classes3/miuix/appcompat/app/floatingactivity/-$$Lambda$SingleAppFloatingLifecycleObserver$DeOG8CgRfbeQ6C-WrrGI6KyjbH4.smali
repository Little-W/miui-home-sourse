.class public final synthetic Lmiuix/appcompat/app/floatingactivity/-$$Lambda$SingleAppFloatingLifecycleObserver$DeOG8CgRfbeQ6C-WrrGI6KyjbH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/-$$Lambda$SingleAppFloatingLifecycleObserver$DeOG8CgRfbeQ6C-WrrGI6KyjbH4;->f$0:Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/-$$Lambda$SingleAppFloatingLifecycleObserver$DeOG8CgRfbeQ6C-WrrGI6KyjbH4;->f$1:Landroid/view/View;

    iput-object p3, p0, Lmiuix/appcompat/app/floatingactivity/-$$Lambda$SingleAppFloatingLifecycleObserver$DeOG8CgRfbeQ6C-WrrGI6KyjbH4;->f$2:Lmiuix/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/-$$Lambda$SingleAppFloatingLifecycleObserver$DeOG8CgRfbeQ6C-WrrGI6KyjbH4;->f$0:Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/-$$Lambda$SingleAppFloatingLifecycleObserver$DeOG8CgRfbeQ6C-WrrGI6KyjbH4;->f$1:Landroid/view/View;

    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/-$$Lambda$SingleAppFloatingLifecycleObserver$DeOG8CgRfbeQ6C-WrrGI6KyjbH4;->f$2:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->lambda$executeCloseExit$0$SingleAppFloatingLifecycleObserver(Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method
